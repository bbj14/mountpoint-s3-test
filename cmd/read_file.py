S3_MOUNT_PATH = "/mnt/s3"

with open(S3_MOUNT_PATH + "/test.txt", "r") as f:
    print(f.read())
