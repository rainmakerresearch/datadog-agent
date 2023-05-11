FROM datadog/agent

ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true

ARG DD_API_KEY
ARG DD_SITE
ARG DD_HOSTNAME

VOLUME /var/run/docker.sock:/var/run/docker.sock:ro \
       /proc/:/host/proc/:ro \
       /sys/fs/cgroup/:/host/sys/fs/cgroup:ro
       
EXPOSE 8125/udp
EXPOSE 8126/udp
