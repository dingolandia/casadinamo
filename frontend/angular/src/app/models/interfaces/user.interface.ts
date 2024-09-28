
export interface User{
    id: number;
    username: string;
    email: string;
    provider: string;
    confirmed: boolean;
    blocked: boolean;
    created_at: Date;
    updated_at: Date;
}

export interface Login{
    identifier: string;
    password: string;
}

export interface Auth{
    jwt: string;
    user: User;
}
