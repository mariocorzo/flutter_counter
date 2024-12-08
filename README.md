```markdown
# Flutter Counter App with BLoC

This is a simple Flutter application that demonstrates how to use the **BLoC (Business Logic Component)** pattern with **flutter_bloc** to implement a counter. 

## Features

- Increment and decrement the counter using `CounterCubit`.
- State management handled by `flutter_bloc`.
- Clean and modular architecture.

---

## Project Structure

```plaintext
lib/
├── counter/
│   ├── cubit/
│   │   ├── counter_cubit.dart  # BLoC logic for the counter
│   └── view/
│       ├── counter_page.dart  # Entry point for the counter feature
│       └── counter_view.dart  # Counter UI
└── main.dart                  # App entry point
```

---

## Getting Started

### Prerequisites

- **Flutter SDK**: Ensure Flutter is installed on your machine.
- **flutter_bloc**: This project uses the `flutter_bloc` package for state management.

Install the dependencies by running:

```bash
flutter pub get
```

---

### Running the App

1. Clone the repository:
   ```bash
   git clone https://github.com/mariocorzo/flutter_counter.git
   cd flutter_counter
   ```

2. Run the application:
   ```bash
   flutter run
   ```

---

## Code Overview

### `CounterCubit`

The `CounterCubit` handles the logic for incrementing and decrementing the counter.

```dart
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
```

### `CounterView`

The `CounterView` displays the counter and provides buttons to interact with the `CounterCubit`.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(builder: (context, state) {
          return Text(
            '$state',
            style: textTheme.displayMedium,
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment()),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
```

---

## Dependencies

This project uses the following dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.0
```

Install them with:

```bash
flutter pub get
```

---

## Contributing

Feel free to open issues or submit pull requests if you want to improve the app or report bugs.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.
```

### **Notas**:
- **Estructura del proyecto:** Explica cómo están organizados los archivos.
- **Ejemplos de código:** Muestra partes clave del código, como el `CounterCubit` y la `CounterView`.
- **Instrucciones para correr el proyecto:** Pasos básicos para clonar y ejecutar la aplicación.
- **Capturas de pantalla:** Añade imágenes en la carpeta `docs/screenshots` para ilustrar el funcionamiento del contador.