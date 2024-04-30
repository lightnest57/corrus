curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/Itel_S666LN/ && ls vendor_boot.img)"
rclone copy ~/rom/out/target/product/Itel-S666LN/vendor_boot.img fk09:Itel_S666LN -P      
curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/Itel_S666LN/ && ls vendor_boot.img) Uploaded Successfully!"
