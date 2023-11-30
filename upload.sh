if [ -f ~/rom/out/target/product/juice/qassa_S*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/juice/ && ls qassa_S*.zip)"
      rclone copy ~/rom/out/target/product/juice/qassa_S*.zip fk09:juice -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/juice/ && ls qassa_S*.zip) Uploaded Successfully!"
fi