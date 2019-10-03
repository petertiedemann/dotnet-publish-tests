# Container image that runs your code
FROM mcr.microsoft.com/dotnet/core/runtime:2.1-alpine

# Pre-cache system nugets
RUN dotnet help

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmodx +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]