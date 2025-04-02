import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "MoguMogu",
  description: "Track what your baby likes to eat",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
