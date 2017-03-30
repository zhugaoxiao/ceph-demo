FROM ceph/demo

# Install Ceph and prerequisites
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get update && apt-get install -y --force-yes ceph-mon ceph-osd ceph-mds ceph-base ceph-common radosgw rbd-mirror && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
