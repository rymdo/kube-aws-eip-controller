FROM scratch
ENTRYPOINT ["/kube-aws-eip-controller"]
COPY kube-aws-eip-controller /