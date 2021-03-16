              <Receiver address="000.000.000.000" autoBind="0" className="org.apache.catalina.tribes.transport.nio.NioReceiver" maxThreads="6" port="4004" selectorTimeout="5000" />
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.TcpPingInterceptor" staticOnly="true"/>
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.StaticMembershipInterceptor">
              </Interceptor>
