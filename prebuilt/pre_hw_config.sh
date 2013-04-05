# LMU AS3676 Configuration before chargemon
dev=/sys/devices/i2c-0/0-0040/leds
echo 4000 > $dev/button-backlight/max_current
echo 20000 > $dev/lcd-backlight/max_current
echo 2000 > $dev/red/max_current
echo 2000 > $dev/green/max_current
echo 2000 > $dev/blue/max_current
