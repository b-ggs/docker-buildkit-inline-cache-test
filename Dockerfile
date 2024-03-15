FROM busybox AS stage-1A

COPY rootfs/stage-1A.txt /stage-1A.txt

FROM busybox AS stage-1B

COPY rootfs/stage-1B.txt /stage-1B.txt

FROM busybox AS stage-2

COPY --from=stage-1A /stage-1A.txt /stage-1A.txt
COPY --from=stage-1B /stage-1B.txt /stage-1B.txt
