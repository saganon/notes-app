import 'package:notes_app/models/notes_model.dart';
import 'package:http/http.dart' as http;

class NotesApi {
  Future<List<Notes>> getNotes() async {
    var client = http.Client();
    var url = Uri.parse('http://localhost:3000/notes');
    var response = await client.get(url);

    if (response.statusCode == 200) {
      return Notes.fromListJson(response.body as List);
    }

    return List.empty();
  }
}
