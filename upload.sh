if [ -f ~/rom/out/target/product/Itel_S666LN/vendor_boot.img ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/Itel_S666LN/ && ls xdCLO_*.img)"
      rclone copy ~/rom/out/target/product/Itel_S666LN/vendor_boot.img fk09:Itel_S666LN -P      
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/Itel_S666LN/ && ls xdCLO_*.img) Uploaded Successfully!"
fi
rclone copy ~/rom/out/target/product/itel/vendor_boot.img fk09:Itel_S666LN -P