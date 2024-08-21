This guide will walk you through the steps necessary to set up and run the project locally.

## Prerequisites

- **Flutter**: Ensure you have Flutter installed. The current Flutter version for this project is **3.22.2**.
- **Ory Console**: You need access to the [Ory Console](https://console.ory.sh/).

## Getting Started

### 1. Clone the Repository

To clone this repository to your local machine, open your terminal and run the following command:

```bash
git clone <repository_url>
cd <repository_directory>
```
### 2. Run the Flutter Web Server

To run the project on a web server, execute the following command:

```bash
flutter run -d web-server --web-port 4005
```
### 3. Configure Ory Project

1. Visit the [Ory Console](https://console.ory.sh/).
2. Go to **Project settings** and copy the **API endpoints** & **Project ID**.
3. Navigate to **Authentication** > **Passwordless Login** > **Enable Passkey Authentication**:
   - Enable passkey authentication.
   - Click on **Show advanced settings**.
   - Set the hostname to `localhost`.
   - Add `http://localhost:4005` to the allowed origins.

### 4. Set Up Environment Variables

Locate the `.env` file in the root of your project. Open it and set the `ORY_BASE_URL` variable to the API endpoint you copied earlier:

```env
ORY_BASE_URL=<your_copied_api_endpoint>
```

### 5. Configure CORS

To ensure proper communication between the Ory server and your application, they must share the same domain. Since this cannot be done directly, use the Ory tunnel:

Run the following command in your terminal:

```bash
ory tunnel --project <your_copied_project_id> http://localhost:4005 --dev
```

### 6. Open your app

Go to localhost:4005
