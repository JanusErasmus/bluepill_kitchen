#include <stdio.h>

#include "Utils/cli.h"
#include "Utils/commands.h"

void rtc_debug(uint8_t argc, char **argv);
const sTermEntry_t rtcEntry =
{ "date", "RTC date", rtc_debug };

void adc_debug(uint8_t argc, char **argv);
const sTermEntry_t adcEntry =
{ "a", "Sample ADC", adc_debug };

void seg_debug(uint8_t argc, char **argv);
const sTermEntry_t segEntry =
{ "s", "Set Segment brightness", seg_debug };

const sTermEntry_t *cli_entries[] =
{
      &hEntry,
      &helpEntry,
      &rebootEntry,
      &bootEntry,
	  &rtcEntry,
	  &adcEntry,
	  &segEntry,
      0
};
