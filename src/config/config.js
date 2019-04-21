var config = module.exports;

const userRoles = config.userRoles = {
    guest: 1,       // 0001
    user: 2,        // 0010
    admin: 4,       // 0100
    superAdmin: 8   // 1000
}

config.accessLevels = {
    guest: userRoles.guest | userRoles.user | userRoles.admin | userRoles.superAdmin, // 1111 //1111
    user: userRoles.user | userRoles.admin | userRoles.superAdmin,                    // 0111 //1110
    admin: userRoles.admin | userRoles.superAdmin,                                    // 0011 //1100
    superAdmin: userRoles.superAdmin,                                                 // 0001 //1000
}