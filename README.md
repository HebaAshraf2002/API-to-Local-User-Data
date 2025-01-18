# API-to-Local-User-Data
# overview
This Flutter application fetches user data from an API, parses the JSON response into structured Dart objects, and displays the user names and usernames in a card-based list. It demonstrates essential concepts such as: 
- Making API requests using the http package.
- Parsing JSON data into Dart models.
- Rendering dynamic data in the user interface using widgets like ListView.builder.
  
The app is split into three main layers:
1. Models: Defines the structure of the data.
2. Services: Handles communication with the API.
3. UI Components: Presents the data to the user.

# What the Code Does
1. Fetch Data from API:
   The app fetches user data from the JSONPlaceholder API. Each user record includes details like name, username, email, address, and company information.
2. Parse JSON Data:
   The API response is parsed into Dart objects using classes like User, Address, and Company. These models make it easier to access and manipulate the data.
3. Display Data in UI:
  The user data is displayed in a clean, scrollable list using the ListView.builder widget. Each list item includes the user's name and username in a visually appealing card.
4. Navigate Between Screens:
   The app has a home screen (FetchData.dart) with a button that navigates to the user list screen (DataEmployee.dart).

# How the Code Works
1. Data Models
The User_model.dart file defines the structure of the data.
- User class represents the main user data.
- Address and Geo represent the nested address details.
- Company represents the company details of the user.
  
2. API Service
The UserService class handles API communication.

- API Endpoint: The app sends a GET request to https://jsonplaceholder.typicode.com/users.
- Response Handling: If the API call succeeds (statusCode == 200), the response body (JSON) is decoded and converted into User objects.
- The fetched data is stored in a list and returned for display
  
3. UI Components
   
FetchData.dart
- Displays a button that navigates to the DataEmployee (user list) screen when pressed.
- Uses responsive design with MediaQuery to adjust for different screen sizes.
  
DataEmployee.dart
- Calls the getUser() method from UserService to fetch user data.
- Displays a CircularProgressIndicator while waiting for data.
- Uses ListView.builder to render the list of users dynamically.
- Each user is displayed in a ListTile wrapped in a Card widget.

4. Navigation
- The app uses Flutter’s Navigator to handle screen transitions.
- The button in FetchData navigates to DataEmployee.
