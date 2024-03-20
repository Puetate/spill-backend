import { APP_ROLES } from "../constants/app-roles";

export type AppRoles = (typeof APP_ROLES)[keyof typeof APP_ROLES];
