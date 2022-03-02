#include <FreeRTOS.h>
#include "console.h"
#include "riscv-virt.h"

#define CONSOLE_WIDTH 16
#define CONSOLE_HEIGHT 8

struct console_ctx {
  unsigned char x;
  unsigned char y;
  char chars[CONSOLE_HEIGHT][CONSOLE_WIDTH];
};

static struct console_ctx console;

static void console_lcd_send(int x, int y);
static void console_lcd_sync();
static void console_write_char(char c);
static void console_clear_line(int y);
static void console_char_forward();
static void console_line_forward();

/* exported functions */

void lcd_putc(char c) {
  console_write_char(c);
}

void lcd_print(const char *str) {
    portENTER_CRITICAL();
    while (*str != '\0') {
        lcd_putc(*str++);
    }
    portEXIT_CRITICAL();
}

void lcd_setpos(int x, int y) {
  console.x = x;
  console.y = x;
}

void _console_init() {
  console.x = 0;
  console.y = 0;
  // init char buf
  for (int y = 0; y < CONSOLE_HEIGHT; y++) {
    console_clear_line(y);
  }
  console_lcd_sync();
}

/* file local functions */


static void console_lcd_sync() {
  for (int y = 0; y < CONSOLE_HEIGHT; y++) {
    for (int x = 0; x < CONSOLE_WIDTH; x++) {
      console_lcd_send(x, y);
    }
  }
}

static void console_lcd_send(int x, int y) {
  char c = console.chars[y][x];
  for (int i = 0; i < 8; i++) {
    lcd_write(x*8 + i, y, fonts[(unsigned char)c][i]);
  }
}

static void console_write_char(char c) {
  if (c == '\n') {
    console_line_forward();
  } else {
    console.chars[console.y][console.x] = c;
    console_lcd_send(console.x, console.y);
    console_char_forward();
  }
}

static void console_clear_line(int y) {
  for (int x = 0; x < CONSOLE_WIDTH; x++) {
    console.chars[y][x] = ' ';
  }
}

static void console_char_forward() {
  console.x += 1;
  if (console.x >= CONSOLE_WIDTH) {
    console_line_forward();
  }
}

static void console_line_forward() {
  console.y += 1;
  console.x = 0;
  if (console.y >= CONSOLE_HEIGHT) {
    // scroll 1 line
    for (int y = 0; y < CONSOLE_HEIGHT - 1; y++) {
      for (int x = 0; x < CONSOLE_WIDTH; x++) {
        console.chars[y][x] = console.chars[y+1][x];
      }
    }
    console_clear_line(CONSOLE_HEIGHT - 1);
    console.y = CONSOLE_HEIGHT - 1;
    console_lcd_sync();
  }
}
