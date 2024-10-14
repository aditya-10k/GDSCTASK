import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icons_plus/icons_plus.dart';


class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  final TextEditingController _controller = TextEditingController();
  String _response = '';




 

  void _sendRequest() async {
    setState(() {
      _response = "Working on it...may take a few seconds";
    });

    String prompt = '${_controller.text}';
    print(prompt);
    final model = GenerativeModel(
      model: 'gemini-1.5-flash',
      apiKey: dotenv.env['TOKEN'] ?? '',
    );

    final response = await model.generateContent([Content.text(prompt)]);
    String formattedResponse = response.text?.replaceAll('*', '').trim() ?? 'No response';
    print(formattedResponse.toString());

    setState(() {
      _response = formattedResponse;
      _controller.clear();
      
    });
  }



  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
 Color backgroundColor = isDarkMode ? Colors.black38 : Colors.grey[300]!;
    return SafeArea(
      child: Scaffold(
        
        body: Column(
          children: [
      
            
            SizedBox(height: 10),
      
      
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        if (_response.isEmpty)
                          Text('Start chatting!')
                        else
                          Column(
                            children: [
                  
                              Text(_response), 
                            
                             
                                
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _controller,
                          autofocus: true,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: backgroundColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 11, 65, 146),
                                width: 2.0,
                              ),
                            ),
                            hintText: 'Chat with our bot',
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                
                                IconButton(
                                  icon: Icon(AntDesign.arrow_up_outline),
                                  onPressed: _sendRequest,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}