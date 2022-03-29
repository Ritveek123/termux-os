clear
mkdir output
echo "building img file.."
echo 'installing nasm'
apt update && apt install nasm
echo "combining all files"
cd src
cat print.asm keyboard.asm bootloader.asm > boot.asm
nasm -f bin boot.asm -o ../output/termux-os.img
rm boot.asm
echo "img file generated sucessfully"
