import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
import { getFirestore } from "firebase/firestore";
import { getAuth } from "firebase/auth";
import { getStorage } from "firebase/storage";
import { getDatabase } from "firebase/database";

// Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyCmDBCCNGYE-CQqG-EBu8cc5pb8XCsO3FE",
  authDomain: "holo-model-app.firebaseapp.com",
  databaseURL: "https://holo-model-app-default-rtdb.asia-southeast1.firebasedatabase.app",
  projectId: "holo-model-app",
  storageBucket: "gs://holo-model-app.appspot.com",
  messagingSenderId: "260770453134",
  appId: "1:260770453134:web:e63273cf5e28ff3ba61bdf",
  measurementId: "G-Q0F1BCN0GC"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
const firestore = getFirestore(app);
const auth = getAuth(app);
const storage = getStorage(app);
const database = getDatabase(app);

export { app, analytics, firestore, auth, storage, database };
