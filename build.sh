BRANCH='master' # change to whichever you want
CYMUNK_BRANCH='master'
PYTHON='python'
KIVENT_USE_SETUPTOOLS='True'
CYMUNK_USE_SETUPTOOLS='True'

# Install cymunk for kivent_cymunk
echo "Installing cymunk backend..."
cd /tmp
rm -r -f ./cymunk
git clone -b $CYMUNK_BRANCH https://github.com/kivy/cymunk
$PYTHON -m pip install --upgrade --force-reinstall ./cymunk
echo "Done."

echo "Downloading kivent..."
rm -r -f ./kivent
git clone -b $BRANCH https://github.com/kivy/kivent
cd kivent/modules
echo "Done."

echo "Installing kivent-core..."
$PYTHON -m pip install --upgrade --force-reinstall ./core
echo "Done."
echo "Installing kivent-cymunk..."
$PYTHON -m pip install --upgrade --force-reinstall ./cymunk
echo "Done."
echo "Installing kivent-particles..."
$PYTHON -m pip install --upgrade --force-reinstall ./particles
echo "Done."
echo "Installing kivent-projectiles..."
$PYTHON -m pip install --upgrade --force-reinstall ./projectiles
echo "Done."
echo "Installing kivent-maps..."
$PYTHON -m pip install --upgrade --force-reinstall ./maps
echo "Done."
echo "Done installing kivent."

cmd -k