if [ -f ~/rom/out/target/product/citrus/DerpFest-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/citrus/ && ls DerpFest-*.zip)"
      rclone copy ~/rom/out/target/product/citrus/DerpFest-*.zip fk09:citrus -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/citrus/ && ls DerpFest-*.zip) Uploaded Successfully!"
fi
