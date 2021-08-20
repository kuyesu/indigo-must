render:
	tutor config render --extra-config ./config-totem.yml ./theme "$$(tutor config printroot)/env/build/openedx/themes/indigo-totem"

watch: render
	while true; do inotifywait -e modify --recursive config.yml ./theme; $(MAKE) render; done
