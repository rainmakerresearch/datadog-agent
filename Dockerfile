FROM gcr.io/datadoghq/agent:7

ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true

ARG DD_API_KEY
ARG DD_SITE

# VOLUME /var/run/docker.sock:/var/run/docker.sock:ro \
#        /proc/:/host/proc/:ro \
#        /sys/fs/cgroup/:/host/sys/fs/cgroup:ro

CMD ["agent"]
