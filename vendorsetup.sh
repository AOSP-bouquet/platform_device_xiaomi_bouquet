# Override host metadata to make builds more reproducible and avoid leaking info
export BUILD_USERNAME=reinaaa
export BUILD_HOSTNAME=toaster

export BUILD_NUMBER=$(date +%Y%m%d)
