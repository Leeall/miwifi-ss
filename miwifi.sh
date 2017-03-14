#!/bin/sh
cd /tmp
echo "*********************************************************"
echo "*                    SS插件安装器                       *"
echo "*                                                       *"
echo "*          安装前请关闭小米路由器自带VPN功能            *"
echo "*                                                       *"
echo "*         支持路由型号：mini | r1d | r2d | r3           *"
echo "*                                                       *"
echo "*             购买SS帐号咨询群：206055051               *"
echo "*                                                       *"
echo "*********************************************************"
echo "                                                         "
echo "请选择需要的操作（按下对应数字后回车确认）"
echo "1：安装r1d&r2d版SS插件"
echo "2：卸载r1d&r2d版SS插件"
echo "3：安装mini版ss插件"
echo "4：卸载mini版ss插件"
echo "5：安装r3版ss插件"
echo "6：卸载r3版ss插件"
echo "0:退出"
read num

target_script=""
src_script=""

cd /tmp

if [ "${num}" == "1" ]; then
  target_script="r2d_ss.sh"
  src_script="https://raw.githubusercontent.com/blademainer/miwifi-ss/master/r2d/r2d_ss.sh"
elif [ "${num}" == "2" ]; then
  src_script="https://raw.githubusercontent.com/blademainer/miwifi-ss/master/r2d/r2d_uninstall.sh"
  target_script="r2d_uninstall.sh"
elif [ "${num}" == "3" ]; then
  src_script="https://raw.githubusercontent.com/blademainer/miwifi-ss/master/mini/mini_ss.sh"
  target_script="mini_ss.sh"
elif [ "${num}" == "4" ]; then
  src_script="https://raw.githubusercontent.com/blademainer/miwifi-ss/master/mini/mini_uninstall.sh"
  target_script="mini_uninstall.sh"
elif [ "${num}" == "5" ]; then
  src_script="https://raw.githubusercontent.com/blademainer/miwifi-ss/master/r3/r3_ss.sh"
  target_script="r3_ss.sh"
elif [ "${num}" == "6" ]; then
  src_script="https://raw.githubusercontent.com/blademainer/miwifi-ss/master/r3/r3_uninstall.sh"
  target_script="r3_uninstall.sh"
elif [ "${num}" == "0" ]; then
  echo "Exit!"
  exit
else
  echo "Unknown number:"${num}
  exit
fi

rm -rf ${target_script}
curl ${src_script} > ${target_script}
chmod -R 777 ${target_script}
sh ${target_script}

