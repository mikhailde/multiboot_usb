#!/bin/bash
echo "Монтирование накопителя..."
mount $0 /mnt
echo "Установка GRUB..."
grub-install --target=x86_64-efi --removable --boot-directory=/mnt/boot --efi-directory=/mnt
echo "Настройка GRUB..."
cp boot EFI fonts /mnt/ -R
echo "Готово"

