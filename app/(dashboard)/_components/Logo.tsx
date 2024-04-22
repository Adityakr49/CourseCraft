import Image from "next/image";

export const Logo = () => {
  return (
    <div className="flex flex-row">
      <Image height={50} width={50} alt="logo" src="/logo.svg" />
      <h1 className="mt-5 text-lg font-bold">CourseCraft</h1>
    </div>
  );
};
