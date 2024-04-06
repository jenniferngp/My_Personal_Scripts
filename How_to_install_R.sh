
# 1. Make sure conda is directed to yours!
which conda 

# 2. Make sure curl is directed to /usr/bin/curl! The default is your conda's curl which does not work for R installation.
which curl
export PATH=/usr/bin/:$PATH
which curl

# 3. Download an R.tar.gz file from https://cran.mtu.edu/
wget $link

# 4. Unzip 
tar -xf R-4.0.1.tar.gz
cd R-4.0.1

# 5. Configure
# If you get "--with-x=yes (default) and X11 headers/libs are not available" error, it could be that you're on a node and not on the head node
# If you get "--with-readline" error, use "--with-readline=no --with-x=no" to your configure command
./configure --with-pcre1 --prefix=/frazer01/home/jennifer/software/R-4.0.1

# 6. Build
make && make install

# 7. Export
export PATH=~/software/R-4.0.1/bin:$PATH

# 8. Open R to check that it works and the version is correct
R