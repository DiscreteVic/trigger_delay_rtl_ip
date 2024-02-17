QUARTUS_DIR=
PROJECT=trigger_delay_rtl_ip

all: update_sources synthesize fit assemble

update_sources:
	@ ./update_sources.sh

synthesize:
	@ $(QUARTUS_DIR)quartus_map --read_settings_files=on --write_settings_files=off $(PROJECT) -c $(PROJECT)

fit:
	@ $(QUARTUS_DIR)quartus_fit --read_settings_files=on --write_settings_files=off $(PROJECT) -c $(PROJECT)

assemble:
	@ $(QUARTUS_DIR)quartus_asm --read_settings_files=on --write_settings_files=off $(PROJECT) -c $(PROJECT)

program:
	@ $(QUARTUS_DIR)quartus_pgm -z --mode=JTAG --operation="p;output_files/$(PROJECT).sof@1"
jtag:
	@ $(QUARTUS_DIR)jtagd
	@ $(QUARTUS_DIR)jtagconfig

killjtag:
	@ sudo killall jtagd

clean:
	@ rm -rf db/ output_files/ incremental_db/ *.qpf
