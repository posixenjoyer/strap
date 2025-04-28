🚀 Strap! 🎒 Pacman! ⋮ Dots!


                   ❓❓❓❓❓❓❓❓❓❓❓
                       What is this??
                   ❓❓❓❓❓❓❓❓❓❓❓

    A series of shellscripts to handle the provisioning of a new shell 
    environment (with a focus on software development and tooling).

                    🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩
                          The Meat!
                    🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩
    🔫 Strap 🔫

        The brains of the operation.  Think of it as a mini "init.d" subsystem.

    All files in the ./straps directory will be executed by strap.


```
straps=$(find ./straps -maxdepth 1 -mindepth 1 -executable -type f)

for strap in $straps; do
	if [[ $filter == "--dry" ]];then
		continue
	fi

	if echo "$strap" | grep -qv "$filter"; then
		log "Not running: $strap"
		continue
	fi
	if [[ $dry == "0" ]]; then 
		execute ./$strap
	else
		log executing $strap
	fi
done

```
