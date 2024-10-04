/**
 * Import function triggers from their respective submodules:
 *
 * import { onCall } from "firebase-functions/v2/https";
 * import { onDocumentWritten } from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import { onRequest } from "firebase-functions/v2/https";
import * as logger from "firebase-functions/logger";

// Start writing functions
// https://firebase.google.com/docs/functions/typescript

// Example HTTP function
export const helloWorld = onRequest((request, response) => {
  logger.info("Hello logs!", { structuredData: true }); // Logs info to Firebase
  logger.info("Received request:", { method: request.method, url: request.url }); // Log request method and URL
  response.send("Hello from Firebase!"); // Sends a response to the client
});
