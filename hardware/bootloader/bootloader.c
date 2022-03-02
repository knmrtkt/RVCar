
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>
#include "bootloader.h"
#define SECTOR_SIZE 512

union{
    uint8_t sectorBuffer[SECTOR_SIZE];
    uint32_t sectorBuffer32[SECTOR_SIZE/4];
}secbuf;

uint8_t entryBuffer[32];

uint32_t firstSector = 0;

#ifdef _RVCORE_

#define SDCRAM_ADDR        0x80000000
volatile uint32_t *SDCRAM_BASE = (volatile uint32_t *)(SDCRAM_ADDR);
volatile uint32_t *INIT_COUNT  = (volatile uint32_t *)(0x00000000);
volatile uint32_t *DEBUG_PORT  = (volatile uint32_t *)(0x4000A000);

#define DEBUG_PRINT(x, ...) 0
#define DEBUG_PUTX(x) (*DEBUG_PORT=x)

#define OPEN_DEVICE 0
#define OPEN_OUTMEM 0
#define CLOSE_DEVICE 0
#define CLOSE_OUTMEM 0


int readSector(uint32_t sectorNum){
    int i;
    for(i=0; i<SECTOR_SIZE/4; i++) secbuf.sectorBuffer32[i] = *(SDCRAM_BASE+((firstSector+sectorNum)*SECTOR_SIZE/4+i));
    return i;
}
void dumpSectorBuffer(){
    for(int i=0; i<SECTOR_SIZE/4; i++){
        *INIT_COUNT = secbuf.sectorBuffer32[i];
        INIT_COUNT++;
    }
}
#else

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>


#define DEBUG_PRINT printf
#define DEBUG_PUTX(x) 0

int  fileID;      // File reading from
int  outputFileId;
char *outputFileName = "boot2.bin";
char *isoFileName = "sd.iso";

#define OPEN_DEVICE (fileID = open(isoFileName, O_RDWR))
#define OPEN_OUTMEM (outputFileId = open(outputFileName, O_WRONLY|O_CREAT|O_TRUNC, 0666))

#define CLOSE_DEVICE (close(fileID))
#define CLOSE_OUTMEM (close(outputFileId))


int readSector(uint32_t sectorNum){
    lseek(fileID, (firstSector+sectorNum)*SECTOR_SIZE, SEEK_SET);
	return read(fileID, secbuf.sectorBuffer, SECTOR_SIZE);
}

void dumpSectorBuffer(){
    write(outputFileId, secbuf.sectorBuffer, 512);
}

#endif


void *
my_memcpy (void *dest, const void *src, size_t len)
{
  char *d = dest;
  const char *s = src;
  while (len--){
    *d++ = *s++;
  }
    
  return dest;
}
int my_strlen(const char* str){
    int length = 0;
    while(*str++ != '\0'){
        length++;
    }
    return length;
}

typedef unsigned char uc;
static const unsigned char charmap[] = {
	(uc)'\000',(uc)'\001',(uc)'\002',(uc)'\003',(uc)'\004',(uc)'\005',(uc)'\006',(uc)'\007',
	(uc)'\010',(uc)'\011',(uc)'\012',(uc)'\013',(uc)'\014',(uc)'\015',(uc)'\016',(uc)'\017',
	(uc)'\020',(uc)'\021',(uc)'\022',(uc)'\023',(uc)'\024',(uc)'\025',(uc)'\026',(uc)'\027',
	(uc)'\030',(uc)'\031',(uc)'\032',(uc)'\033',(uc)'\034',(uc)'\035',(uc)'\036',(uc)'\037',
	(uc)'\040',(uc)'\041',(uc)'\042',(uc)'\043',(uc)'\044',(uc)'\045',(uc)'\046',(uc)'\047',
	(uc)'\050',(uc)'\051',(uc)'\052',(uc)'\053',(uc)'\054',(uc)'\055',(uc)'\056',(uc)'\057',
	(uc)'\060',(uc)'\061',(uc)'\062',(uc)'\063',(uc)'\064',(uc)'\065',(uc)'\066',(uc)'\067',
	(uc)'\070',(uc)'\071',(uc)'\072',(uc)'\073',(uc)'\074',(uc)'\075',(uc)'\076',(uc)'\077',
	(uc)'\100',(uc)'\141',(uc)'\142',(uc)'\143',(uc)'\144',(uc)'\145',(uc)'\146',(uc)'\147',
	(uc)'\150',(uc)'\151',(uc)'\152',(uc)'\153',(uc)'\154',(uc)'\155',(uc)'\156',(uc)'\157',
	(uc)'\160',(uc)'\161',(uc)'\162',(uc)'\163',(uc)'\164',(uc)'\165',(uc)'\166',(uc)'\167',
	(uc)'\170',(uc)'\171',(uc)'\172',(uc)'\133',(uc)'\134',(uc)'\135',(uc)'\136',(uc)'\137',
	(uc)'\140',(uc)'\141',(uc)'\142',(uc)'\143',(uc)'\144',(uc)'\145',(uc)'\146',(uc)'\147',
	(uc)'\150',(uc)'\151',(uc)'\152',(uc)'\153',(uc)'\154',(uc)'\155',(uc)'\156',(uc)'\157',
	(uc)'\160',(uc)'\161',(uc)'\162',(uc)'\163',(uc)'\164',(uc)'\165',(uc)'\166',(uc)'\167',
	(uc)'\170',(uc)'\171',(uc)'\172',(uc)'\173',(uc)'\174',(uc)'\175',(uc)'\176',(uc)'\177',
	(uc)'\200',(uc)'\201',(uc)'\202',(uc)'\203',(uc)'\204',(uc)'\205',(uc)'\206',(uc)'\207',
	(uc)'\210',(uc)'\211',(uc)'\212',(uc)'\213',(uc)'\214',(uc)'\215',(uc)'\216',(uc)'\217',
	(uc)'\220',(uc)'\221',(uc)'\222',(uc)'\223',(uc)'\224',(uc)'\225',(uc)'\226',(uc)'\227',
	(uc)'\230',(uc)'\231',(uc)'\232',(uc)'\233',(uc)'\234',(uc)'\235',(uc)'\236',(uc)'\237',
	(uc)'\240',(uc)'\241',(uc)'\242',(uc)'\243',(uc)'\244',(uc)'\245',(uc)'\246',(uc)'\247',
	(uc)'\250',(uc)'\251',(uc)'\252',(uc)'\253',(uc)'\254',(uc)'\255',(uc)'\256',(uc)'\257',
	(uc)'\260',(uc)'\261',(uc)'\262',(uc)'\263',(uc)'\264',(uc)'\265',(uc)'\266',(uc)'\267',
	(uc)'\270',(uc)'\271',(uc)'\272',(uc)'\273',(uc)'\274',(uc)'\275',(uc)'\276',(uc)'\277',
	(uc)'\300',(uc)'\341',(uc)'\342',(uc)'\343',(uc)'\344',(uc)'\345',(uc)'\346',(uc)'\347',
	(uc)'\350',(uc)'\351',(uc)'\352',(uc)'\353',(uc)'\354',(uc)'\355',(uc)'\356',(uc)'\357',
	(uc)'\360',(uc)'\361',(uc)'\362',(uc)'\363',(uc)'\364',(uc)'\365',(uc)'\366',(uc)'\367',
	(uc)'\370',(uc)'\371',(uc)'\372',(uc)'\333',(uc)'\334',(uc)'\335',(uc)'\336',(uc)'\337',
	(uc)'\340',(uc)'\341',(uc)'\342',(uc)'\343',(uc)'\344',(uc)'\345',(uc)'\346',(uc)'\347',
	(uc)'\350',(uc)'\351',(uc)'\352',(uc)'\353',(uc)'\354',(uc)'\355',(uc)'\356',(uc)'\357',
	(uc)'\360',(uc)'\361',(uc)'\362',(uc)'\363',(uc)'\364',(uc)'\365',(uc)'\366',(uc)'\367',
	(uc)'\370',(uc)'\371',(uc)'\372',(uc)'\373',(uc)'\374',(uc)'\375',(uc)'\376',(uc)'\377',
};

int
my_strcasecmp(const char *s1, const char *s2)
{
    register unsigned char u1, u2;

    for (;;) {
	u1 = (unsigned char) *s1++;
	u2 = (unsigned char) *s2++;
	if (charmap[u1] != charmap[u2]) {
	    return charmap[u1] - charmap[u2];
	}
	if (u1 == '\0') {
	    return 0;
	}
    }
}


uint32_t bps;		// Bytes Per Sector
uint32_t spc;	// Sectors Per Cluster
uint32_t dps;    // DirEntry per sector
uint32_t reservedSec;  // Reserved sector location
uint32_t dataSecStart; // Starting point for data sector
uint32_t FATSz32;

uint32_t FAT[32];
fat32BS bootSector; 
DIR dirStruct;
FSI fsiStruct;




char *bootFileName = "boot.bin";

uint32_t returnFirstSector (uint32_t cluster) {
    return dataSecStart + (cluster-2) * spc;
} 

uint32_t getClusterNum(DIR dirEntry){
	return ((dirEntry.DIR_FstClusHI<<16) + dirEntry.DIR_FstClusLO);
}


void removeSpaces(char source[], char dest[]) {
    int j = 0;
    for (int i = 0; i < my_strlen(source); i++) {
        if (source[i] != ' ') {
            dest[j] = source[i];
            j++;
        }
    }
    dest[j] = '\0';
}

void appendDot(char file[]) {
    int i;
    char temp = '.';
    char temp2;
    for (i = my_strlen(file)-3; i < my_strlen(file)+1; i++) {
        temp2 = file[i];
        file[i] = temp;
        temp = temp2;
    }
}

int readEntry(uint32_t sectorNum, uint32_t entryNum) 
{
    int len = readSector(sectorNum);
    my_memcpy(&entryBuffer, secbuf.sectorBuffer+(entryNum*32), sizeof(entryBuffer));
	return len;
}

int readFAT(uint32_t sectorNum, uint8_t *buffer, uint32_t offset) 
{
    int len = readSector(sectorNum+offset/512);
    my_memcpy(buffer, secbuf.sectorBuffer+offset%512, sizeof(uint8_t)*32);
	return len;
}

bool findFile(uint32_t clusterNum, char *fileName, DIR *entry) {
    int i, j;
    char name[12];
    char nameNoSpace[12];
    DIR * currEntry;
    uint32_t foundClusterNum = -1;
    uint32_t currentClusterNum = -1;
    bool success = false;
    uint32_t FATSecOffset = (clusterNum*4);
    uint32_t nextCluster;

    uint32_t baseSector = returnFirstSector(clusterNum);
    for (i = 0; i < spc && !success; i++) {
        for (j = 0; j < dps && !success; j++) {
            readEntry(baseSector+i, j);
            currEntry = (DIR * )entryBuffer;
            my_memcpy(name, currEntry->DIR_Name, 11);
            name[11] = '\0';

            removeSpaces(name, nameNoSpace);

            if (currEntry->DIR_Attr == 32) {
                appendDot(nameNoSpace);
            }

            if ((currEntry->DIR_Attr == 16 || currEntry->DIR_Attr == 32) && j >= 1) {
                if (my_strcasecmp(nameNoSpace, fileName) == 0) {
                    success = true;
                    my_memcpy(entry, currEntry, sizeof(DIR));
                }
            }
        }
    }

    readFAT(reservedSec, (unsigned char *)FAT, FATSecOffset);
    nextCluster = FAT[0];
    nextCluster = nextCluster & 0x0FFFFFFF;

    if (nextCluster < 0xffffff7 && !success) {
        findFile(nextCluster, fileName, entry);
    }

    return success; 
}


void readFile(uint32_t clusterNum) {
    int i;
    char name[12];
    char nameNoSpace[12];
    DIR * currEntry;
    uint32_t nextCluster;
    uint32_t FATSecNum = reservedSec + (clusterNum*4/bps);
    uint32_t FATSecOffset = (clusterNum*4);
    
    uint32_t baseSector = returnFirstSector(clusterNum);

    for (i = 0; i < spc; i++) {
        readSector(baseSector+i);
        dumpSectorBuffer();
    } 

    readFAT(reservedSec, (unsigned char *)FAT, FATSecOffset);
    nextCluster = FAT[0];
    nextCluster = nextCluster & 0x0FFFFFFF;

    if (nextCluster < 0xffffff7) {
        readFile(nextCluster);
    }
}

int main()
{
    int count;
    int numSectors;
    char *input;
    int rootDir_SecNum;

    OPEN_DEVICE;
    OPEN_OUTMEM;

    count = readSector(0);
    firstSector |= secbuf.sectorBuffer[446+ 8] <<  0;
    firstSector |= secbuf.sectorBuffer[446+ 9] <<  8;
    firstSector |= secbuf.sectorBuffer[446+10] <<  16;
    firstSector |= secbuf.sectorBuffer[446+11] <<  24;
    DEBUG_PUTX(firstSector);
    DEBUG_PRINT("first sec no : %d\n", firstSector);

    readSector(0);

    my_memcpy(&bootSector, secbuf.sectorBuffer, sizeof(fat32BS));

    bps = bootSector.BPB_BytesPerSec;
    while(bps != SECTOR_SIZE){
        DEBUG_PUTX(0x12345678);
    }
    spc = bootSector.BPB_SecPerClus;
    
    numSectors = bps * bootSector.BPB_FATSz32 / 4;
    FATSz32 = bootSector.BPB_FATSz32;
    dps=bps/32;
    reservedSec = bootSector.BPB_RsvdSecCnt;
    rootDir_SecNum = returnFirstSector(bootSector.BPB_RootClus);

    readSector(bootSector.BPB_FSInfo);
    my_memcpy(&fsiStruct, secbuf.sectorBuffer, sizeof(FSI));

    if (fsiStruct.FSI_TrailSig != 0xAA550000) {
        DEBUG_PRINT("Signatures don't match: 0.%x\n", fsiStruct.FSI_TrailSig);
    }
    uint32_t freeSpace =  fsiStruct.FSI_Free_Count * spc * bps;

    DEBUG_PRINT("Name: %s\n", bootSector.BS_OEMName);
    DEBUG_PRINT("Free Space: %d\n", freeSpace);
    DEBUG_PRINT("Bytes per Sector: %d\n", bps);
    DEBUG_PRINT("Sector per Cluster: %d\n", spc);
    DEBUG_PRINT("Number of FATs = %d\n", bootSector.BPB_NumFATs);
    DEBUG_PRINT("Sectors Per FAT = %d\n", FATSz32);
    DEBUG_PRINT("Usable Storage: %d\n", (bps/4)*bps*spc);
    DEBUG_PRINT("Number of Clusters (Sectors): %d\n", numSectors);
    DEBUG_PRINT("Number of Clusters (Kbs): %d\n", numSectors * bps * spc / 1000);

    dataSecStart = bootSector.BPB_RsvdSecCnt + bootSector.BPB_NumFATs * bootSector.BPB_FATSz32;

    uint32_t clusterNum = bootSector.BPB_RootClus;
    bool success;
    DIR entry_mem;
    DIR *entry = &entry_mem;

    DEBUG_PRINT("Input: %s\n", bootFileName);
    
    // Find file in current directory
    success = findFile(clusterNum, bootFileName, entry);
    if (success)
    {
        clusterNum = entry->DIR_FstClusLO;
        readFile(clusterNum);
    }
    else{
        DEBUG_PRINT("file not found\n");
    }
    CLOSE_DEVICE;
    CLOSE_OUTMEM;

    return 0;
}

