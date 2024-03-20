import { ClassConstructor, Transform, plainToInstance } from "class-transformer";

export function ParseJson(cls: ClassConstructor<unknown>) {
  return Transform((params) => {
    if (typeof params.value === "object") return params.value;
    return params.value === "" ? null : plainToInstance(cls, JSON.parse(params.value));
  });
}
