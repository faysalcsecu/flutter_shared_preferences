# **🔹 Flutter Shared Preferences Counter App**

A simple Flutter application that demonstrates **persistent storage** using `SharedPreferences`. This app keeps track of a counter value and stores it, so the count persists even after restarting the app.

## **📌 Features**
- 📊 **Stores counter value persistently** using `SharedPreferences`
- 🔄 **Retrieves the saved counter** when the app starts
- ➕ **Increment button to update the counter**
- 🎨 **Modern UI with Material Design**

[//]: # (## **🖥️ Screenshots**)

[//]: # (### **Home Screen &#40;Counter Display&#41;**)

[//]: # (![screenshot]&#40;assets/home.png&#41;)

## **🛠️ Installation & Usage**

1. Clone this repository:
   ```sh
   git clone https://github.com/yourusername/flutter_shared_prefs_counter.git
   ```
2. Navigate to the project directory:
   ```sh
   cd flutter_shared_prefs_counter
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## **📜 Code Explanation**

### **Saving and Retrieving Counter Value**
- **Retrieving the counter** (when the app starts):
  ```dart
  Future<void> loadNumber() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int count = pref.getInt("counter") ?? 0;
    setState(() {
      number = count;
    });
  }
  ```
- **Incrementing the counter and saving it:**
  ```dart
  Future<void> incrementNumber() async {
    number++;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("counter", number);
    setState(() {});
  }
  ```

## **📌 Dependencies Used**
- `flutter`
- `shared_preferences`

## 😱 **Live Demo**
https://faysalcsecu.github.io/flutter_state_management/


## **👤 Author**
**Faysal Bin Alauddin**

📧 Email: faysalf716@gmail.com
🔗 GitHub: [Faysal Bin Alauddin](https://github.com/faysalcsecu)  
🔗 LinkedIn: [Faysal Bin Alauddin](https://www.linkedin.com/in/faysal-bin-alauddin-4815a92a7/)
