
set -e

USER="jrivero"
MOUNT_POINT="/media/VBGA"
VBGA_FILE="VBoxGuestAdditions.iso"
VBGA_INSTALLER="VBoxLinuxAdditions.run"

sudo mkdir "${MOUNT_POINT}"
sudo mount /home/"${USER}"/"${VBGA_FILE}" "${MOUNT_POINT}"
sudo "${MOUNT_POINT}"/"${VBGA_INSTALLER}"

