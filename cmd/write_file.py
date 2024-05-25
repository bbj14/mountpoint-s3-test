import sys

S3_MOUNT_PATH = "/mnt/s3"

if len(sys.argv) < 2:
    print("Usage: python write_file.py <text>")
    sys.exit(1)

with open(S3_MOUNT_PATH + "/test.txt", "w") as f:
    f.write(" ".join(sys.argv[1:]) + "\n")
