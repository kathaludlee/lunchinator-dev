DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR
git clone https://github.com/hannesrauhe/lunchinator.git
pushd lunchinator
git checkout dev
git pull
popd
export __lunchinator_nightly=1
lunchinator/installer/make_deb.sh
