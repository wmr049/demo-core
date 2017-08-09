FROM microsoft/dotnet:latest
COPY  . /app
WORKDIR /app

RUN dotnet restore
RUN dotnet build

EXPOSE 6060/tcp
ENV ASPNETCORE_URLS http://*:6060
ENV ASPNETCORE_ENVIRONMENT docker

ENTRYPOINT dotnet run