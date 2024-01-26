if [ -f ~/rom/out/target/product/citrus/obj/KERNEL_OBJ/arch/arm64/boot/Image.gz ]; then
      rclone copy ~/rom/out/target/product/citrus/obj/KERNEL_OBJ/arch/arm64/boot/Image.gz fk09:citrus -P
      rclone copy ~/rom/out/target/product/citrus/obj/KERNEL_OBJ/arch/arm64/boot/dtbo.img fk09:citrus -P
fi