cp Dockerfile.base Dockerfile && \
./command2label.py ./xnat/command.json >> Dockerfile && \
docker build --no-cache -t xnat/fullprocessingneurodot_bids_v2:3.4 .
docker tag xnat/fullprocessingneurodot_bids_v2:3.4 registry.nrg.wustl.edu/docker/nrg-repo/yash/fullprocessingneurodot_bids_v2:3.4
rm Dockerfile
