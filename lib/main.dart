import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Asistencia(),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;

  void aumentar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      contador--;
    });
  }

  void reiniciar() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("contador basico")),
      body: Center(
        child: Column(
          children: [
            Text(
              '$contador',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: aumentar, child: Text("Aumentar")),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decrementar,
                  child: Text("Decrementar"),
                ),
                SizedBox(width: 20),
                ElevatedButton(onPressed: reiniciar, child: Text("Reiniciar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Mensaje extends StatefulWidget {
  const Mensaje({super.key});

  @override
  State<Mensaje> createState() => _MensajeState();
}

class _MensajeState extends State<Mensaje> {
  String mensaje = "sigue practicando , no te rindas";

  void cambiarMensaje() {
    setState(() {
      mensaje = "cada error tambien enseña ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cambio de mensaje')),
      body: Center(
        child: Column(
          children: [
            Text(
              mensaje,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: cambiarMensaje,
              child: Text('Cambiar Mensaje'),
            ),
          ],
        ),
      ),
    );
  }
}

class Caja extends StatefulWidget {
  const Caja({super.key});

  @override
  State<Caja> createState() => _CajaState();
}

class _CajaState extends State<Caja> {
  Color colorCaja = Colors.blue;
  String nombreColor = "Azul";

  void CambiarRojo() {
    setState(() {
      colorCaja = Colors.red;
      nombreColor = "rojo";
    });
  }

  void CambiarVerde() {
    setState(() {
      colorCaja = Colors.green;
      nombreColor = "verde";
    });
  }

  void CambiarMorado() {
    setState(() {
      colorCaja = Colors.purple;
      nombreColor = "morado";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de color'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: colorCaja,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 20),
            Text(' $nombreColor', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: CambiarRojo,
              child: Text('Cambiar a rojo'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: CambiarVerde,
              child: Text('Cambiar a verde'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: CambiarMorado,
              child: Text('Cambiar a morado'),
            ),
          ],
        ),
      ),
    );
  }
}

class MostrarOcultar extends StatefulWidget {
  const MostrarOcultar({super.key});

  @override
  State<MostrarOcultar> createState() => _MostrarOcultarState();
}

class _MostrarOcultarState extends State<MostrarOcultar> {
  bool mostrarTexto = false;

  void CambiarVisibilidad() {
    setState(() {
      mostrarTexto = !mostrarTexto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostrar/Ocultar Texto'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.info, size: 50, color: Colors.amber),
              SizedBox(height: 20),

              if (mostrarTexto)
                const Text(
                  "Ejemplo de mostrar texto con stateful widget",
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ElevatedButton(
                onPressed: CambiarVisibilidad,
                child: Text(mostrarTexto ? 'Ocultar Texto' : 'Mostrar Texto'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Nombre extends StatefulWidget {
  const Nombre({super.key});

  @override
  State<Nombre> createState() => _NombreState();
}

class _NombreState extends State<Nombre> {
  final TextEditingController nombreController = TextEditingController();
  String saludo = "Escribe tu nombre";

  void mostrarSaludo() {
    setState(() {
      saludo = "Hola, ${nombreController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saludar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: nombreController,
                decoration: InputDecoration(
                  labelText: "Nombre",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: mostrarSaludo,
                child: Text("Saludar"),
              ),
              SizedBox(height: 20),
              Text(
                saludo,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController programaController = TextEditingController();
  final TextEditingController ciudadController = TextEditingController();

  String mensaje = "";

  void mostrarDatos() {
    setState(() {
      mensaje =
          "Hola, ${nombreController.text}. Estudias ${programaController.text} y vives en ${ciudadController.text}.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                labelText: "Nombre",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: programaController,
              decoration: const InputDecoration(
                labelText: "Programa",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: ciudadController,
              decoration: const InputDecoration(
                labelText: "Ciudad",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: mostrarDatos,
              child: const Text("Mostrar"),
            ),
            const SizedBox(height: 20),
            Text(
              mensaje,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}


class Asistencia extends StatefulWidget {
  const Asistencia({super.key});

  @override
  State<Asistencia> createState() => _AsistenciaState();
}

class _AsistenciaState extends State<Asistencia> {
  bool asistencia = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirmar Asistencia"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text("Confirmar asistencia"),
              value: asistencia,
              onChanged: (bool? value) {
                setState(() {
                  asistencia = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              asistencia
                  ? "Asistencia confirmada"
                  : "Asistencia pendiente",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}