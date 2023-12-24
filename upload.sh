if [ -f ~/rom/out/target/product/chime/Fluid-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/chime/ && ls evolution_chime.zip)"
      rclone copy ~/rom/out/target/product/chime/Fluid-*.zip fk09:chime -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/chime/ && ls Fluid-*.zip) Uploaded Successfully!"
fi
