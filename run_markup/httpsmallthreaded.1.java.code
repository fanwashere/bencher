import java.net.URL;
import java.net.MalformedURLException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.CompletionService;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.Future;
import java.util.concurrent.Callable;
import java.io.InputStream;
import java.util.concurrent.Executors;
import java.lang.InterruptedException;

class Response {
    private InputStream body;

    public Response(InputStream body) {
        this.body = body;
    }

    public InputStream getBody() {
        return body;
    }
}

class Request implements Callable<Response> {
    private URL url;

    public Request(URL url) {
        this.url = url;
    }

    @Override
    public Response call() throws Exception {
        return new Response(url.openStream());
    }
}

public class httpsmallthreaded {
	public static void main(String args[]) {
		ExecutorService executor = Executors.newFixedThreadPool(10);
		CompletionService<Response> completionService = new ExecutorCompletionService<Response>(executor);

		int expecting = 0;

		for (int i = 0; i < 10; i++) {
			String urlString = "http://www.google.com";
      			URL url = null;

			try {
				url = new URL(urlString);
			} catch (MalformedURLException e) {

			} finally {
				completionService.submit(new Request(url));
				expecting++;
			}
		}

		int received = 0;

		while (received < expecting) {
			try {
				completionService.take();
				received++;
			} catch (InterruptedException e) {
				received++;
			}
		}

		executor.shutdown();
	}
}
