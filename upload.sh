if [ -f ~/rom/out/target/product/citrus/AfterLife-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/citrus/ && ls AfterLife-*.zip)"
      rclone copy ~/rom/out/target/product/citrus/AfterLife-*.zip 298:citrus -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/citrus/ && ls AfterLife-*.zip) Uploaded Successfully!"
fi
