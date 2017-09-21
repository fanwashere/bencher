import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.Files;
import java.io.IOException;

public class fsread {
	public static void main(String[] args) {
		String filePath = "./../../../programs/fsread/video.mp4";
		Path path = Paths.get(filePath);
		byte[] fileBytes = null;

		try {
			String content = new String(Files.readAllBytes(path));
			System.out.println(content.length());
		} catch (IOException e) {}
	}
}
