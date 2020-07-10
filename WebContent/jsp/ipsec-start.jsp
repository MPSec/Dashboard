<%@ page language="java" import= "java.io.*, java.util.*, java.net.* "
   contentType="text/html;charset=EUC-KR" session="false" %>

<%
    String path = "/home/tomcat8/webapps/ROOT/MPSec/ipsec-sh/tcp-ipsec-start.sh";
    String bashCommand[] = {"ipsec", "start"}; // bash 명령어
    String scriptCommand[] = {"sh", path}; //shell script 실행

    int lineCount = 0;
    String line="";

    ProcessBuilder builder = new ProcessBuilder(bashCommand);
    Process childProcess = null;

    try{
        childProcess = builder.start();

      BufferedReader br =
            new BufferedReader(
                    new InputStreamReader(
                          new SequenceInputStream(childProcess.getInputStream(), childProcess.getErrorStream())));

      while((line = br.readLine()) != null){
%>
    <%=line%>
<%
      }
      br.close();

   }catch(IOException ie){
      ie.printStackTrace();
   }catch(Exception e){
      e.printStackTrace();
   }
%>
