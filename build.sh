cp Dockerfile.base Dockerfile && \
./command2label.py ./xnat/command.json >> Dockerfile && \
docker build --no-cache -t xnat/fullprocessingneurodot_bids_v2:2.0 .
docker tag xnat/fullprocessingneurodot_bids_v2:2.0 registry.nrg.wustl.edu/docker/nrg-repo/yash/fullprocessingneurodot_bids_v2:2.0
rm Dockerfile
