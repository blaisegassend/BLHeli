SUFFIX=HACKED_V1
HEX_DIR="Output/Hex"
EEP_DIR="Output/Eep"
BINARY=/home/gassend/temp/avr/avrasm2.exe
mkdir -p $HEX_DIR
mkdir -p $EEP_DIR
for VERSION in BLUESERIES_12A_MULTI MULTISTAR_20Av2_MULTI; do
  wine "$BINARY" -D "$VERSION" -fI -o "$HEX_DIR/${VERSION}_$SUFFIX.HEX" \
    BLHeli.asm -e "$EEP_DIR/${VERSION}_$SUFFIX.EEP"
done
