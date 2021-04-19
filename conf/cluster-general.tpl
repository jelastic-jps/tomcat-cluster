      <Cluster className="org.apache.catalina.ha.tcp.SimpleTcpCluster" channelSendOptions="6">
          <Valve className="org.apache.catalina.ha.tcp.ReplicationValve" filter=".*\.gif;.*\.js;.*\.jpg;.*\.png;.*\.htm;.*\.html;.*\.css;.*\.txt;" />
          <ClusterListener className="org.apache.catalina.ha.session.ClusterSessionListener" />
          <Channel className="org.apache.catalina.tribes.group.GroupChannel">
              <Sender className="org.apache.catalina.tribes.transport.ReplicationTransmitter">
                  <Transport className="org.apache.catalina.tribes.transport.nio.PooledParallelSender"/>
              </Sender>
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.TcpFailureDetector"/>
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.MessageDispatchInterceptor"/>        
          </Channel>
      </Cluster>
