public class IMDBcontroller {
    
    @auraEnabled(cacheable=true)
    public static string getMovies(string searchText){
                Http http = new Http();
                HttpRequest request = new HttpRequest();
                //request.setEndpoint('https://api.collectapi.com/imdb/imdbSearchByName?query='+searchText);
        		request.setEndpoint('callout:IMDB/imdb/imdbSearchByName?query='+searchText);
                request.setMethod('GET');
                //request.setHeader('Authorization', 'apikey 0o8z9gy9KtPty0ZMTsheqP:35rPB05GuHKkX1ci0X1Hx8');
                HttpResponse response = http.send(request);
                System.debug('Status code: '+response.getStatusCode());
                System.debug('Body: '+response.getBody());
                if(response.getStatusCode() == 200)
                {
                    return response.getBody();
                }
                else
                {
                   return 'Error Code : '+response.getStatusCode(); 
                }
       }
    @auraEnabled(cacheable=true)
    public static string getMoviesDetails(string movieId){
                Http http = new Http();
                HttpRequest request = new HttpRequest();
                request.setEndpoint('callout:IMDB/imdb/imdbSearchById?movieId='+movieId);
                request.setMethod('GET');
                //request.setHeader('Authorization', 'apikey 0o8z9gy9KtPty0ZMTsheqP:35rPB05GuHKkX1ci0X1Hx8');
                HttpResponse response = http.send(request);
                System.debug('Status code: '+response.getStatusCode());
                System.debug('Body: '+response.getBody());
                if(response.getStatusCode() == 200)
                {
                    return response.getBody();
                }
                else
                {
                   return 'Error Code : '+response.getStatusCode(); 
                }
    }
}