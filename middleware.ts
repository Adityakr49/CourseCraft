import { authMiddleware } from "@clerk/nextjs";

export default authMiddleware({
  // publicRoutes: ["/test"],
  publicRoutes: ["/api/uploadthing", "/api/webhook"],
});

export const config = {
  matcher: ["/((?!.+.[w]+$|_next).*)", "/", "/(api|trpc)(.*)"],
};
