#!/bin/bash
brew install hbase thrift

DIR=$(brew info hbase | grep Cellar/hbase | head -n 1 | cut -d ' ' -f 1)
HBASE_DIR=/etc/hbase/data
ZOOKEEPER_DIR=/etc/hbase/zookeeper

HBASE_CONF=$(cat <<_EOF_
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>
  <property>
    <name>hbase.rootdir</name>
    <value>file://$HBASE_DIR</value>
  </property>
  <property>
    <name>hbase.zookeeper.property.dataDir</name>
    <value>$ZOOKEEPER_DIR</value>
  </property>
</configuration>
_EOF_)

HBASE_START=$(cat <<_EOF_
#!/bin/sh
$DIR/bin/start-hbase.sh
screen -amd -S thrift hbase thrift start
_EOF_)

echo $HBASE_CONF > $DIR/libexec/conf/hbase-site.xml

echo $HBASE_START > /usr/local/bin/hbase-start
chmod +x /usr/local/bin/hbase-start

sudo mkdir -pv /etc/hbase/{data,zookeeper}
sudo chown -R `whoami`:staff /etc/hbase/
