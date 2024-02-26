if [ -f ~/rom/out/target/product/citrus/lineage-21*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/citrus/ && ls RR-*.zip)"
      rclone copy ~/rom/out/target/product/citrus/lineage-21*.zip fk09:citrus -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/citrus/ && ls RR-*.zip) Uploaded Successfully!"
fi