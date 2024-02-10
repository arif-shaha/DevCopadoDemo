public class RTIntegrationExam2 
{
    Public static void GetDetailSpostAPI(string Branch)
    {
        
        String EndPoint = 'https://api.postalpincode.in/postoffice/'+Branch;
        http p = New http();        
        httpRequest r = New httpRequest();
        r.setEndpoint(EndPoint);
        r.setMethod('GET');
        HttpResponse response = p.send(r);
        String Body = response.getBody();
        System.debug(Body);
    }

}