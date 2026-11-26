import 'package:flutter/material.dart';
import 'cli_data.dart'; // Sesuaikan dengan path file Anda

class CLIPage extends StatefulWidget {
  const CLIPage({super.key});

  @override
  State<CLIPage> createState() => _CLIPageState();
}

class _CLIPageState extends State<CLIPage> {
  // --- STATE DATA ---
  bool _isFinished = false; 
  int _score = 0;
  int _activeQuestionIndex = 0;
  final Set<int> _solvedQuestions = {};
  
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  
  final List<Question> _questions = listQuestions;
  final List<String> _terminalLogs = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      List<String> welcomeLines = [
        "Connecting to SAJ_TJKT_11 via SSH...",
        "Connection established.",
        "Logging in as: root",
        "Last login: ${DateTime.now().toString().substring(0, 10)} on hpkentang",
        "------------------------------------------",
        "INTRUKSI EVALUASI:",
        "1. Baca soal di baris navigasi biru.",
        "2. Ketik perintah Linux yang tepat.",
        "3. Tekan ENTER untuk submit jawaban.",
        "4. Gunakan tombol panah di samping soal untuk ganti soal.",
        "------------------------------------------",
        "Terminal ready for input."
      ];

      for (var line in welcomeLines) {
        await _typeWriteAsync(line);
        await Future.delayed(const Duration(milliseconds: 50)); 
      }
    });
  }

  Future<void> _typeWriteSequential(List<String> lines) async {
    for (String line in lines) {
      await _typeWriteAsync(line);
      await Future.delayed(const Duration(milliseconds: 200)); 
    }
  }

  Future<void> _typeWriteAsync(String text) async {
    if (!mounted) return;
    setState(() => _terminalLogs.add(""));
    int lastIndex = _terminalLogs.length - 1;
    String currentText = "";

    double currentDelay = 50.0; 
    double minDelay = 2.0;      
    double acceleration = 0.75; 

    for (int i = 0; i < text.length; i++) {
      await Future.delayed(Duration(milliseconds: currentDelay.toInt()));
      currentText += text[i];
      
      if (mounted) {
        setState(() => _terminalLogs[lastIndex] = currentText);
      }
      _scrollToBottom();

      if (currentDelay > minDelay) {
        currentDelay *= acceleration; 
      }
    }
  }

  void _typeWrite(String text) async {
    setState(() => _terminalLogs.add("")); 
    int lastIndex = _terminalLogs.length - 1;
    String currentText = "";

    for (int i = 0; i < text.length; i++) {
      await Future.delayed(const Duration(milliseconds: 20));
      currentText += text[i];
      if (mounted) {
        setState(() => _terminalLogs[lastIndex] = currentText);
      }
      _scrollToBottom();
    }
  }

  void _processCommand(String input) {
    if (input.trim().isEmpty) {
      _typeWriteAsync("⚠️ WARNING: Perintah tidak boleh kosong!");
      return;
    }

    String cmd = input.trim().toLowerCase();

    setState(() => _terminalLogs.add("root@sai:~# $input"));
    _controller.clear();

    Future.delayed(const Duration(milliseconds: 300), () async {
      var kunciList = _questions[_activeQuestionIndex].kunci;
      
      // Cek apakah input pengguna cocok dengan salah satu kunci yang tersedia
      bool isCorrect = kunciList.any((kunci) => kunci.trim().toLowerCase() == cmd);

      if (isCorrect) {
        if (!_solvedQuestions.contains(_activeQuestionIndex)) {
          setState(() => _score += 20);
          _solvedQuestions.add(_activeQuestionIndex);
          await _typeWriteAsync("✅ SUCCESS: Perintah benar. Skor bertambah!");
        } else {
          await _typeWriteAsync("ℹ️ INFO: Soal ini sudah selesai.");
        }
      } else {
        await _typeWriteAsync("❌ ERROR: Perintah salah atau typo.");
      }
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(_isFinished ? "Hasil Evaluasi" : "Tantangan Sintaks"),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: _isFinished ? _buildResultView() : _buildKuisView(),
    );
  }

  Widget _buildKuisView() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatCard("SKOR", "$_score", Colors.orange),
              _buildStatCard("PROGRESS", "${_solvedQuestions.length}/${_questions.length}", Colors.blue),
            ],
          ),
        ),
        
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios, size: 20),
                onPressed: _activeQuestionIndex > 0 ? () => setState(() => _activeQuestionIndex--) : null,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    _questions[_activeQuestionIndex].soal,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
                onPressed: _activeQuestionIndex < _questions.length - 1 ? () => setState(() => _activeQuestionIndex++) : null,
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 220, 
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
            ),
            child: Column(
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(color: Colors.grey[900], borderRadius: const BorderRadius.vertical(top: Radius.circular(12))),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      _dot(Colors.red), _dot(Colors.orange), _dot(Colors.green),
                      const Expanded(child: Center(child: Text("bash", style: TextStyle(color: Colors.white54, fontSize: 10, fontFamily: 'monospace')))),
                    ],
                  ),
                ),
                
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(10),
                    itemCount: _terminalLogs.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        _terminalLogs[index],
                        style: const TextStyle(color: Colors.greenAccent, fontFamily: 'monospace', fontSize: 12),
                      ),
                    ),
                  ),
                ),
                
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.black,
                  child: Row(
                    children: [
                      const Text("root@tjkt:~# ", style: TextStyle(color: Colors.blueAccent, fontFamily: 'monospace', fontSize: 12)),
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          autofocus: true,
                          cursorColor: Colors.white,
                          style: const TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 12),
                          decoration: const InputDecoration(border: InputBorder.none, isDense: true),
                          onSubmitted: _processCommand,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        if (_solvedQuestions.contains(_activeQuestionIndex))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blueAccent.withOpacity(0.5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.lightbulb, color: Colors.orange, size: 20),
                      SizedBox(width: 8),
                      Text("Mengapa Ya?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blueAccent)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _questions[_activeQuestionIndex].penjelasan,
                    style: const TextStyle(fontSize: 13, color: Colors.black87, height: 1.4),
                  ),
                ],
              ),
            ),
          ),
        
        const Spacer(),
        
        Padding(
          padding: const EdgeInsets.all(20),
          child: _activeQuestionIndex == _questions.length - 1 
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () => setState(() => _isFinished = true),
                child: const Text("FINISH & CEK SKOR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              )
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  setState(() {
                    _activeQuestionIndex++; 
                  });
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SOAL BERIKUTNYA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildResultView() {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.military_tech, size: 120, color: Colors.amber),
          const Text("TOTAL SKOR", style: TextStyle(fontSize: 16, color: Colors.grey)),
          Text("$_score", style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("KEMBALI KE HOME"),
          ),
          TextButton(
            onPressed: () => setState(() {
              _isFinished = false;
              _score = 0;
              _solvedQuestions.clear();
              _terminalLogs.clear();
              _terminalLogs.add("Terminal Restarted...");
            }),
            child: const Text("COBA LAGI"),
          )
        ],
      ),
      ),
    );
  }

  Widget _buildStatCard(String label, String value, Color color) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 10, color: Colors.grey)),
        Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color)),
      ],
    );
  }

  Widget _dot(Color color) => Container(
    margin: const EdgeInsets.only(right: 4),
    width: 8, height: 8,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}